.class Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderAwarenessDataInputStream"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mLength:J

.field private mPosition:J


# direct methods
.method static synthetic -get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2314
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2315
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2313
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 2322
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2317
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2323
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    .line 2324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2321
    return-void
.end method


# virtual methods
.method public peek()J
    .locals 2

    .prologue
    .line 2340
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    return-wide v0
.end method

.method public readByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2354
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2355
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2356
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2358
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 2359
    .local v0, "ch":I
    if-gez v0, :cond_1

    .line 2360
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2362
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2465
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2461
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2344
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2345
    iget-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2346
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 2348
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 2349
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2343
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2384
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2385
    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v6, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 2386
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 2388
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 2389
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 2390
    .local v1, "ch2":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 2391
    .local v2, "ch3":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 2392
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_1

    .line 2393
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 2395
    :cond_1
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    .line 2396
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    .line 2397
    :cond_2
    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3

    .line 2398
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 2400
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid byte order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readLong()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    iget-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    const-wide/16 v10, 0x8

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2434
    iget-wide v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v10, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 2435
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 2437
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 2438
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 2439
    .local v1, "ch2":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 2440
    .local v2, "ch3":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 2441
    .local v3, "ch4":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 2442
    .local v4, "ch5":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 2443
    .local v5, "ch6":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 2444
    .local v6, "ch7":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 2445
    .local v7, "ch8":I
    or-int v8, v0, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-gez v8, :cond_1

    .line 2446
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 2448
    :cond_1
    iget-object v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_2

    .line 2449
    int-to-long v8, v7

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 2450
    int-to-long v10, v4

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    .line 2449
    add-long/2addr v8, v10

    .line 2450
    int-to-long v10, v3

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    .line 2449
    add-long/2addr v8, v10

    .line 2450
    int-to-long v10, v2

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    .line 2449
    add-long/2addr v8, v10

    .line 2451
    int-to-long v10, v1

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    .line 2449
    add-long/2addr v8, v10

    .line 2451
    int-to-long v10, v0

    .line 2449
    add-long/2addr v8, v10

    return-wide v8

    .line 2452
    :cond_2
    iget-object v8, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_3

    .line 2453
    int-to-long v8, v0

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v1

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v2

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 2454
    int-to-long v10, v3

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    .line 2453
    add-long/2addr v8, v10

    .line 2454
    int-to-long v10, v4

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    .line 2453
    add-long/2addr v8, v10

    .line 2454
    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    .line 2453
    add-long/2addr v8, v10

    .line 2455
    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    .line 2453
    add-long/2addr v8, v10

    .line 2455
    int-to-long v10, v7

    .line 2453
    add-long/2addr v8, v10

    return-wide v8

    .line 2457
    :cond_3
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid byte order: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2366
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2367
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2368
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2370
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 2371
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 2372
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_1

    .line 2373
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2375
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    .line 2376
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    return v2

    .line 2377
    :cond_2
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 2378
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 2380
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2429
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2411
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2412
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2413
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2415
    :cond_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 2416
    .local v0, "ch1":I
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 2417
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_1

    .line 2418
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2420
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    .line 2421
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    return v2

    .line 2422
    :cond_2
    iget-object v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 2423
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2

    .line 2425
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public seek(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2333
    invoke-virtual {p0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->reset()V

    .line 2334
    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2335
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Couldn\'t seek up to the byteCount"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_0
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 2328
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2327
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J

    .prologue
    .line 2405
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J

    iget-wide v4, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v0

    .line 2406
    .local v0, "skipped":J
    iget-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mPosition:J

    .line 2407
    return-wide v0
.end method
