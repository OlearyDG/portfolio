class BST {
  TreeNode root;
  TreeNode current;

  public BST() {
    root=null;
  }
  TreeNode buildTree() {
    root=new TreeNode("Was it Written by Lennon/McCartney or not?");
    //level one
    root.setLeft(new TreeNode("Was it released before 1966?"));
    root.setRight(new TreeNode("Was it written by George?"));
    /*
    //level two
    root.getLeft().setLeft(new TreeNode("Is it on Rubber Soul?"));
    root.getRight().setRight(new TreeNode("Was it written by Ringo?"));
    root.getLeft().setRight(new TreeNode("Was it released after 1966?"));
    root.getRight().setLeft(new TreeNode("Is it the first song on the album?"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("Is it \"Nowhere Man\"?"));
    root.getLeft().getLeft().setRight(new TreeNode("Is it \"A Hard Day's Night\"?"));
    root.getLeft().getRight().setLeft(new TreeNode("Is it \"Helter Skelter\"?"));
    root.getLeft().getRight().setRight(new TreeNode("Is it \"Good Day Sunshine\"?"));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Is it \"Twist and Shout\"?"));
    root.getRight().getRight().setLeft(new TreeNode("Is it \"Octopus's Garden\"?"));
    root.getRight().getLeft().setLeft(new TreeNode("Is it \"Taxman\"?"));
    root.getRight().getLeft().setRight(new TreeNode("Is it \"While My Guitar Gently Weeps\"?"));
    */
    current=root;
    return current;
  }
}
