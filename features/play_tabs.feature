Feature: Play Tabs

  As a music fan
  I would like to convert guitar tabs to music
  So that I can hear what they sound like

  Scenario: My My Hey Hey
  Given tab
    """
    e|---------------------------------
    B|---------------------------------
    G|---------------------------------
    D|----------0--0-------------------
    A|-0--2--3----------2--0-----0--0--
    E|------------------------3--------
    """
  When the guitar plays
  Then the following notes will be played
    """
    A0 A2 A3 D0 D0 A2 A0 E3 A0 A0
    """