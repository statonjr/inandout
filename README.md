## In And Out

A small library to keep track of the availability of contractors.

### Usage

- Create a contractor tuple and put it on the stack. A contractor has
  slots named `name`, `twitter`, and `available`. `name` is the
  contractor's full name. `twitter` is the contractor's Twitter
  handle. `available` is a boolean and signifies whether the
  contractor is available or not.

```
"Calvin Broadus" "@snoopdogg" f contractor boa
```

- Add the contractor

```
add-contractor
```

- Check the contractor in

```
"@snoopdogg" check-in
```

- Check the contractor out

```
"@snoopdogg" check-out
```

- Check the availability of the contractor

```
"@snoopdogg" available?
```
