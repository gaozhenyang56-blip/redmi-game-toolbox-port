.class Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/RiskAppDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-static {v0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)Ltb/d;

    move-result-object v0

    invoke-virtual {v0}, Ltb/d;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-static {v1}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)Ltb/d;

    move-result-object v1

    invoke-virtual {v1}, Ltb/d;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-boolean v1, v1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-static {v0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)Ltb/d;

    move-result-object v0

    const-string v1, "payload_state"

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-static {p1}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->e0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V

    return-void
.end method
