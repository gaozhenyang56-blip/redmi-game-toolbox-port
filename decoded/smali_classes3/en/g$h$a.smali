.class Len/g$h$a;
.super Len/g$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/g$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Len/g$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Len/i;)V
    .locals 1

    sget-object v0, Len/b;->f:Len/b;

    invoke-virtual {p1, v0}, Len/i;->f(Len/b;)V

    return-void
.end method
