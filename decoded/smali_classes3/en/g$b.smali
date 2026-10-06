.class Len/g$b;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g;->Z(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Len/g;


# direct methods
.method varargs constructor <init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, Len/g$b;->d:Len/g;

    iput p4, p0, Len/g$b;->b:I

    iput-wide p5, p0, Len/g$b;->c:J

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Len/g$b;->d:Len/g;

    iget-object v0, v0, Len/g;->r:Len/j;

    iget v1, p0, Len/g$b;->b:I

    iget-wide v2, p0, Len/g$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Len/j;->A(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Len/g$b;->d:Len/g;

    invoke-static {v0}, Len/g;->c(Len/g;)V

    :goto_0
    return-void
.end method
