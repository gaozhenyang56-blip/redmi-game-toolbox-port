.class Len/g$j$b;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g$j;->g(ZLen/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Len/g$j;


# direct methods
.method varargs constructor <init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Len/g$j$b;->b:Len/g$j;

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    iget-object v0, p0, Len/g$j$b;->b:Len/g$j;

    iget-object v0, v0, Len/g$j;->c:Len/g;

    iget-object v1, v0, Len/g;->b:Len/g$h;

    invoke-virtual {v1, v0}, Len/g$h;->a(Len/g;)V

    return-void
.end method
