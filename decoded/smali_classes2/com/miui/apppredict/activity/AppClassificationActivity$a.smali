.class Lcom/miui/apppredict/activity/AppClassificationActivity$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/apppredict/activity/AppClassificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/apppredict/activity/AppClassificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$a;->e:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$a;->e:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->r0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ll3/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll3/b;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$a;->e:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->s0(Lcom/miui/apppredict/activity/AppClassificationActivity;)I

    move-result v0

    :cond_0
    return v0
.end method
