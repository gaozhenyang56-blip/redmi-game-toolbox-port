.class Lbl/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbl/a$e;->a:J

    iput-wide p3, p0, Lbl/a$e;->b:J

    return-void
.end method

.method static synthetic a(Ljava/io/DataInput;)Lbl/a$e;
    .locals 0

    invoke-static {p0}, Lbl/a$e;->d(Ljava/io/DataInput;)Lbl/a$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lbl/a$e;)J
    .locals 2

    iget-wide v0, p0, Lbl/a$e;->a:J

    return-wide v0
.end method

.method static synthetic c(Lbl/a$e;)J
    .locals 2

    iget-wide v0, p0, Lbl/a$e;->b:J

    return-wide v0
.end method

.method private static d(Ljava/io/DataInput;)Lbl/a$e;
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lbl/a$e;

    invoke-direct {p0, v0, v1, v2, v3}, Lbl/a$e;-><init>(JJ)V

    return-object p0
.end method
