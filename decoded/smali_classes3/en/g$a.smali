.class Len/g$a;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g;->Y(ILen/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Len/b;

.field final synthetic d:Len/g;


# direct methods
.method varargs constructor <init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILen/b;)V
    .locals 0

    iput-object p1, p0, Len/g$a;->d:Len/g;

    iput p4, p0, Len/g$a;->b:I

    iput-object p5, p0, Len/g$a;->c:Len/b;

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Len/g$a;->d:Len/g;

    iget v1, p0, Len/g$a;->b:I

    iget-object v2, p0, Len/g$a;->c:Len/b;

    invoke-virtual {v0, v1, v2}, Len/g;->X(ILen/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Len/g$a;->d:Len/g;

    invoke-static {v0}, Len/g;->c(Len/g;)V

    :goto_0
    return-void
.end method
