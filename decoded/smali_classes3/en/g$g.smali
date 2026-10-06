.class public Len/g$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lin/e;

.field d:Lin/d;

.field e:Len/g$h;

.field f:Len/l;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Len/g$h;->a:Len/g$h;

    iput-object v0, p0, Len/g$g;->e:Len/g$h;

    sget-object v0, Len/l;->a:Len/l;

    iput-object v0, p0, Len/g$g;->f:Len/l;

    iput-boolean p1, p0, Len/g$g;->g:Z

    return-void
.end method


# virtual methods
.method public a()Len/g;
    .locals 1

    new-instance v0, Len/g;

    invoke-direct {v0, p0}, Len/g;-><init>(Len/g$g;)V

    return-object v0
.end method

.method public b(Len/g$h;)Len/g$g;
    .locals 0

    iput-object p1, p0, Len/g$g;->e:Len/g$h;

    return-object p0
.end method

.method public c(I)Len/g$g;
    .locals 0

    iput p1, p0, Len/g$g;->h:I

    return-object p0
.end method

.method public d(Ljava/net/Socket;Ljava/lang/String;Lin/e;Lin/d;)Len/g$g;
    .locals 0

    iput-object p1, p0, Len/g$g;->a:Ljava/net/Socket;

    iput-object p2, p0, Len/g$g;->b:Ljava/lang/String;

    iput-object p3, p0, Len/g$g;->c:Lin/e;

    iput-object p4, p0, Len/g$g;->d:Lin/d;

    return-object p0
.end method
