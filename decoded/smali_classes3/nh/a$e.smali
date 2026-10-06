.class public final Lnh/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:[Ljava/io/File;

.field private final d:[Ljava/io/InputStream;

.field private final e:[J

.field final synthetic f:Lnh/a;


# direct methods
.method private constructor <init>(Lnh/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lnh/a$e;->f:Lnh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnh/a$e;->a:Ljava/lang/String;

    iput-wide p3, p0, Lnh/a$e;->b:J

    iput-object p5, p0, Lnh/a$e;->c:[Ljava/io/File;

    iput-object p6, p0, Lnh/a$e;->d:[Ljava/io/InputStream;

    iput-object p7, p0, Lnh/a$e;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lnh/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLnh/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lnh/a$e;-><init>(Lnh/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public c(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnh/a$e;->c:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lnh/a$e;->d:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lnh/d;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
