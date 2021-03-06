library(gt)

# Create a display table where individual table cells are styled

# Input table
tbl <-
  dplyr::tribble(
    ~groupname, ~rowname, ~value,  ~value_2,
    "A",        "1",      361.1,   260.1,
    "A",        "2",      184.3,   84.4,
    "A",        "3",      342.3,   126.3,
    "A",        "4",      234.9,   37.1,
    "B",        "1",      190.9,   832.5,
    "B",        "2",      743.3,   281.2,
    "B",        "3",      252.3,   732.5,
    "B",        "4",      344.7,   281.2)

# Create a display table
cell_styles_tbl <-
  gt(tbl) %>%
  tab_style(
    style = cells_styles(
      bkgd_color = "orange",
      text_color = "white"),
    locations = cells_data(
      columns = vars(value, value_2),
      rows = 1)
  ) %>%
  tab_style(
    style = cells_styles(
      text_size = px(28)),
    locations = cells_column_labels(
      columns = c("value", "value_2"))
  )

cell_styles_tbl
