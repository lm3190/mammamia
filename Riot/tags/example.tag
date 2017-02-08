<example>

<button type="button" name="button">Make List</button>

<div class="item-list">
  <list-itemeach={ todoList}><list-item>
</div>

  <list-edit></list-edit>
<script>
this.todoList = [{
  toDo: "Laundry"
  when: "tomorrow"
},
{
  toDo: "Shopping"
  when: "tomorrow"
},
{
  toDo: "Movies"
  when: "tomorrow"
}]

</script>

<style>
  :scope {
    display: block;
    border: 1px solid red;
    padding: 10px;
  position:fixed;
  height: 100%;
  width: 100%;
  }

.list-item {
  margin-top:
}
</style>
</example>
