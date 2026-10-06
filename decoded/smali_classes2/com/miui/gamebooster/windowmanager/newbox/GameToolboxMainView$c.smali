.class Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;
.super Lu8/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-direct {p0, p2, p3}, Lu8/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public j(ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lu8/d;->j(ILq6/i;Lcom/miui/gamebooster/model/n;)V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lve/k;->d0(Ljava/lang/String;Lcom/miui/gamebooster/model/n;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$c;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->o(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;ILq6/i;Lcom/miui/gamebooster/model/n;)V

    return-void
.end method
