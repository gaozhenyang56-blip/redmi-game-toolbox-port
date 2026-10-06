.class Lcom/miui/gamebooster/windowmanager/newbox/n$a;
.super Lu8/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/n;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/miui/gamebooster/windowmanager/newbox/n;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n$a;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    iput-object p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/n$a;->e:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lu8/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public j(ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lu8/d;->j(ILq6/i;Lcom/miui/gamebooster/model/n;)V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lve/k;->d0(Ljava/lang/String;Lcom/miui/gamebooster/model/n;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n$a;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/n;->g(Lcom/miui/gamebooster/windowmanager/newbox/n;)Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n$a;->f:Lcom/miui/gamebooster/windowmanager/newbox/n;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/n;->g(Lcom/miui/gamebooster/windowmanager/newbox/n;)Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->L(IZLq6/i;Lcom/miui/gamebooster/model/n;)V

    :cond_0
    return-void
.end method
