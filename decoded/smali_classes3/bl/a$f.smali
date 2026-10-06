.class Lbl/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final c:[B


# instance fields
.field private a:[Lbl/a$e;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbl/a$f;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lbl/a$e;

    iput-object p1, p0, Lbl/a$f;->a:[Lbl/a$e;

    iput p2, p0, Lbl/a$f;->b:I

    return-void
.end method

.method static synthetic a(Ljava/io/DataInput;)Lbl/a$f;
    .locals 0

    invoke-static {p0}, Lbl/a$f;->c(Ljava/io/DataInput;)Lbl/a$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lbl/a$f;)[Lbl/a$e;
    .locals 0

    iget-object p0, p0, Lbl/a$f;->a:[Lbl/a$e;

    return-object p0
.end method

.method private static c(Ljava/io/DataInput;)Lbl/a$f;
    .locals 5

    sget-object v0, Lbl/a$f;->c:[B

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lbl/a$f;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v3, Lbl/a$f;

    invoke-direct {v3, v0, v1}, Lbl/a$f;-><init>(II)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, v3, Lbl/a$f;->a:[Lbl/a$e;

    invoke-static {p0}, Lbl/a$e;->a(Ljava/io/DataInput;)Lbl/a$e;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File version unmatched, please upgrade your reader"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File tag unmatched, file may be corrupt"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
