-- Client-side student answer field (serverless).
-- Usage in a .qmd:
--   {{< answer id="m1-t1" prompt="Record the size of each nucleus (with units)" lines="3" >}}
-- Emits a labelled <textarea>. Autosave + export are handled by
-- resources/answers-widget.html (included after body).

local function esc(s)
  return (s:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"))
end

return {
  ["answer"] = function(args, kwargs)
    local id = pandoc.utils.stringify(kwargs["id"] or "")
    local prompt = pandoc.utils.stringify(kwargs["prompt"] or "Your response")
    local lines = pandoc.utils.stringify(kwargs["lines"] or "3")
    if lines == "" then lines = "3" end
    if id == "" then
      -- deterministic fallback so localStorage keys stay stable across reloads
      id = "ans-" .. prompt:lower():gsub("[^%w]+", "-"):gsub("^-+", ""):gsub("-+$", ""):sub(1, 40)
    end
    local html = table.concat({
      '<div class="answer-box">',
      '<label class="answer-prompt" for="af-', esc(id), '">', esc(prompt), "</label>",
      '<textarea id="af-', esc(id), '" class="answer-field" data-answer-id="', esc(id),
      '" rows="', esc(lines), '" placeholder="Type your response here…"></textarea>',
      "</div>",
    })
    return pandoc.RawBlock("html", html)
  end,
}
