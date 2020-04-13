package com.jamesvalles.mainapp.model;
import java.util.List;

public class PostsList {
  List<Posts> postsList;

  public PostsList(List<Posts> postsList) {
    this.postsList = postsList;
  }

  public List<Posts> getPostsList() {
    return postsList;
  }

  public void setPostsList(List<Posts> postsList) {
    this.postsList = postsList;
  }

  @Override
  public String toString() {
    return "PostsList{" +
        "postsList=" + postsList +
        '}';
  }
}
