# Hallo

```java
    private void park(FileDescriptor fd, int event, long nanos) throws IOException {
        Thread t = Thread.currentThread();
        if (t.isVirtual()) {
            Poller.poll(fdVal(fd), event, nanos, this::isOpen);
            if (t.isInterrupted()) {
                throw new InterruptedIOException();
            }
        } else {
            long millis;
            if (nanos == 0) {
                millis = -1;
            } else {
                millis = NANOSECONDS.toMillis(nanos);
            }
            Net.poll(fd, event, millis);
        }
    }
```
