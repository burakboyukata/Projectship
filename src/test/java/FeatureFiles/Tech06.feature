Feature: Add-Edit-Delete Subject Categories Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario: Adding Field
    When Click on the element in the left Nav
      | education     |
      | setup  |
      | subjectCategories |

    And Click on the add subject category in subject categories
      | addSubjectCategory (clickPlusSign) |

    And Add New Category Subject name and Code
      | name_F | Field1 |
      | code_F | 12xy   |

    And Click on the active button in the Add New Category Subject
      | buttonType |

    And Click on the element in the Add New Category Subject
      | saveButton |

    Then Success message should be displayed

  Scenario: Editing Field

    When Click on the element in the left Nav
      | education     |
      | setup  |
      | subjectCategories |

    And Click on the relevant subject to edit
      | addSubjectCategory (clickPlusSign) |


    And Click on the active or deactive button in the Add New Category Subject
      | buttonType |

    And Change or Fix Category Name and Code
      | name_F | Field1 |
      | code_F | 12xy   |

    And Click on the element in the Category Subject
      | saveButton |

    Then Success message should be displayed

  Scenario: Deleting Field

    When Click on the element in the left Nav
      | education     |
      | setup  |
      | subjectCategories |

    And click the red trash sign can next to the relevant subject to delete it.
      | clickDeleteSubjectCategory (clickRedTrash) |

    And User delete item from Dailog
      | Field10 |

    Then Success message should be displayed

