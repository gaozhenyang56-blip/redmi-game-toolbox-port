.class public Lja/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[F

.field public b:J

.field public final synthetic c:Lja/b$b;


# direct methods
.method public synthetic constructor <init>(Lja/b$b;JLja/b$a;)V
    .locals 0

    iput-object p1, p0, Lja/b$b$a;->c:Lja/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lja/b$b$a;->a:[F

    iput-wide p2, p0, Lja/b$b$a;->b:J

    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 4

    iget-object v0, p0, Lja/b$b$a;->c:Lja/b$b;

    iget-object v0, v0, Lja/b$b;->b:Lja/b;

    iget-wide v0, v0, Lja/b;->a:J

    iget-wide v2, p0, Lja/b$b$a;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeReshapeTensor(JJ[I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lja/b$b$a;->a:[F

    return-void
.end method

.method public b([I)V
    .locals 4

    iget-object v0, p0, Lja/b$b$a;->c:Lja/b$b;

    iget-object v0, v0, Lja/b$b;->b:Lja/b;

    iget-wide v0, v0, Lja/b;->a:J

    iget-wide v2, p0, Lja/b$b$a;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeSetInputIntData(JJ[I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lja/b$b$a;->a:[F

    return-void
.end method
