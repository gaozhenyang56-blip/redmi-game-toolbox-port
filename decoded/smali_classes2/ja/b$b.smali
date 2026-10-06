.class public Lja/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/b$b$a;
    }
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lja/b;


# direct methods
.method public synthetic constructor <init>(Lja/b;JLja/b$a;)V
    .locals 0

    iput-object p1, p0, Lja/b$b;->b:Lja/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lja/b$b;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lja/b$b$a;
    .locals 4

    iget-object v0, p0, Lja/b$b;->b:Lja/b;

    iget-wide v0, v0, Lja/b;->a:J

    iget-wide v2, p0, Lja/b$b;->a:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeGetSessionInput(JJLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find seesion input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MNNDemo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    new-instance p1, Lja/b$b$a;

    invoke-direct {p1, p0, v0, v1, v3}, Lja/b$b$a;-><init>(Lja/b$b;JLja/b$a;)V

    return-object p1
.end method
