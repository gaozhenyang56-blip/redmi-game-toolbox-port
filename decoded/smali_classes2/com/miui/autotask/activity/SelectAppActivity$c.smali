.class Lcom/miui/autotask/activity/SelectAppActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/activity/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/SelectAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$c;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$c;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    iget-object p1, p1, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/AppInfoBean;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/AppInfoBean;->isSelect()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity$c;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/autotask/activity/SelectAppActivity;->p0(Lcom/miui/autotask/activity/SelectAppActivity;ZI)V

    return-void
.end method
