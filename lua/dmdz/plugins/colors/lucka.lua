local M = {}

local colors = {
    bg = "#2b3e50",
    fg = "#f8f8f2",
    current_line = "#243443",
    selection = "#19242f",
    comment = "#5c98cd",
    string = "#E6DB74",
    keyword = "#66D9EF",      -- Changed from #FF6541 to cyan
    operator = "#66D9EF",     -- Changed from #FF6541 to cyan
    type_color = "#CA94FF",
    number = "#BD93F9",
    constant = "#66D9EF",     -- Changed from #FF6541 to cyan
    function_name = "#66D9EF",
    class_name = "#A6E22E",
    warning = "#FFB86C",
    error = "#FF5555",
    hint = "#79dafa",
    info = "#66D9EF",
    identifier = "#66D9EF",    -- Changed from #f8f8f2 to cyan
    special = "#9556F6",
    match_paren = "#F8F8F2",
    diff_add = "#A6E22E",
    diff_change = "#E6DB74",
    diff_delete = "#FF5555",
    diff_text = "#66D9EF",
    purple = "#9556F6",
    orange = "#FFB86C",
    pink = "#FF79C6",
    argument_color = "#FFAB28",  -- Added new color for function arguments
    property_color = "#199C4B",  -- Added new color for property accesses
    imported_element = "#f8f8f2",  -- Added color for imported elements
}

function M.setup()
    local highlights = {
        -- Base
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.bg },
        
        -- Syntax
        Comment = { fg = colors.comment, italic = true },
        String = { fg = colors.string },
        Number = { fg = colors.keyword },     -- Changed to cyan
        Float = { fg = colors.keyword },      -- Changed to cyan
        Boolean = { fg = colors.keyword },    -- Changed to cyan
        Function = { fg = colors.function_name },
        Keyword = { fg = colors.keyword },
        Statement = { fg = colors.keyword },
        Conditional = { fg = colors.keyword },
        Repeat = { fg = colors.keyword },
        Label = { fg = colors.pink },
        Operator = { fg = colors.keyword },    -- Changed to use cyan
        Exception = { fg = colors.keyword },
        Include = { fg = colors.keyword },     -- Now using the same cyan
        PreProc = { fg = colors.keyword },
        Define = { fg = colors.pink },
        Macro = { fg = colors.function_name },
        Type = { fg = colors.type_color, italic = true }, -- Added italic
        StorageClass = { fg = colors.pink },
        Structure = { fg = colors.type_color, italic = true }, -- Added italic
        Typedef = { fg = colors.type_color, italic = true }, -- Added italic
        Special = { fg = colors.special },
        SpecialChar = { fg = colors.pink },
        Tag = { fg = colors.keyword },
        SpecialComment = { fg = colors.comment, italic = true },
        Debug = { fg = colors.warning },
        Underlined = { fg = colors.info, underline = true },
        Ignore = { fg = colors.fg },
        Error = { fg = colors.error },
        Todo = { fg = colors.warning, bold = true },
        Identifier = { fg = colors.identifier }, -- Changed to cyan
        
        -- Editor UI
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorLine = { bg = colors.current_line },
        CursorLineNr = { fg = colors.orange, bold = true }, -- Changed to match VSCode
        LineNr = { fg = colors.comment },
        Visual = { bg = colors.selection },
        VisualNOS = { bg = colors.selection },
        Search = { fg = colors.bg, bg = colors.orange },   -- Changed to match VSCode
        IncSearch = { fg = colors.bg, bg = colors.orange }, -- Changed to match VSCode
        Folded = { fg = colors.comment, bg = colors.selection },
        FoldColumn = { fg = colors.comment },
        SignColumn = { bg = colors.bg },
        ColorColumn = { bg = colors.current_line },
        
        -- Diagnostics
        DiagnosticError = { fg = colors.error },
        DiagnosticWarn = { fg = colors.warning },
        DiagnosticInfo = { fg = colors.info },
        DiagnosticHint = { fg = colors.hint },
        DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
        
        -- Popup menus
        Pmenu = { fg = colors.fg, bg = colors.selection },
        PmenuSel = { fg = colors.selection, bg = colors.orange }, -- Changed to match VSCode
        PmenuSbar = { bg = colors.current_line },
        PmenuThumb = { bg = colors.comment },
        
        -- Git highlighting
        DiffAdd = { fg = colors.diff_add },
        DiffChange = { fg = colors.diff_change },
        DiffDelete = { fg = colors.diff_delete },
        DiffText = { fg = colors.diff_text },
        
        -- Status line
        StatusLine = { fg = colors.fg, bg = colors.current_line },
        StatusLineNC = { fg = colors.comment, bg = colors.selection },
        
        -- TreeSitter highlights
        ["@variable"] = { fg = colors.identifier },      -- Changed to cyan
        ["@variable.builtin"] = { fg = colors.keyword },
        ["@variable.parameter"] = { fg = colors.argument_color, italic = true },  -- Added italic
        ["@function"] = { fg = colors.imported_element },  -- Changed to white for imported functions
        ["@function.builtin"] = { fg = colors.function_name },
        ["@function.macro"] = { fg = colors.function_name },
        ["@function.method"] = { fg = colors.property_color },  -- Added for method calls
        ["@method"] = { fg = colors.property_color },          -- Added for method references
        ["@method.call"] = { fg = colors.property_color },     -- Added for method calls
        ["@property"] = { fg = colors.property_color },        -- Changed property access color
        ["@property.access"] = { fg = colors.property_color }, -- Added for property access
        ["@field"] = { fg = colors.property_color },          -- Added for object fields
        ["@field.key"] = { fg = colors.property_color },      -- Added for object keys
        ["@module"] = { fg = colors.imported_element },  -- Added for imported modules
        ["@namespace"] = { fg = colors.imported_element }, -- Added for namespaces/modules
        ["@keyword"] = { fg = colors.keyword },
        ["@keyword.function"] = { fg = colors.function_name },
        ["@keyword.operator"] = { fg = colors.keyword },  -- Changed to cyan
        ["@keyword.return"] = { fg = colors.keyword },
        ["@keyword.import"] = { fg = colors.keyword },
        ["@keyword.export"] = { fg = colors.keyword },
        ["@keyword.conditional"] = { fg = colors.keyword },
        ["@keyword.repeat"] = { fg = colors.keyword },
        ["@keyword.exception"] = { fg = colors.keyword },
        ["@string"] = { fg = colors.string },
        ["@string.escape"] = { fg = colors.pink },
        ["@number"] = { fg = colors.keyword },          -- Changed to cyan
        ["@boolean"] = { fg = colors.keyword },         -- Changed to cyan
        ["@type"] = { fg = colors.type_color, italic = true }, -- Added italic
        ["@type.builtin"] = { fg = colors.type_color, italic = true }, -- Added italic
        ["@type.definition"] = { fg = colors.type_color, italic = true }, -- Added italic
        ["@type.qualifier"] = { fg = colors.type_color, italic = true }, -- Added italic
        ["@interface"] = { fg = colors.type_color, italic = true }, -- Added italic
        ["@constant"] = { fg = colors.pink },
        ["@constant.builtin"] = { fg = colors.pink },
        ["@operator"] = { fg = colors.keyword },  -- Changed to cyan
        ["@comment"] = { fg = colors.comment, italic = true },
        ["@punctuation"] = { fg = colors.fg },
        ["@punctuation.bracket"] = { fg = colors.fg },
        ["@punctuation.special"] = { fg = colors.keyword },  -- Changed to cyan
        ["@constructor"] = { fg = colors.function_name },
        ["@parameter"] = { fg = colors.argument_color, italic = true },          -- Added italic
        ["@parameter.reference"] = { fg = colors.argument_color, italic = true }, -- Added italic
        ["@tag"] = { fg = colors.keyword },
        ["@tag.attribute"] = { fg = colors.class_name },
        ["@tag.delimiter"] = { fg = colors.fg },
    }

    -- Set all highlights
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M