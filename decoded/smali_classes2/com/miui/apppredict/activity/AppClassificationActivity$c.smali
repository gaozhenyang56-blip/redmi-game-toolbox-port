.class Lcom/miui/apppredict/activity/AppClassificationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/apppredict/activity/AppClassificationActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/AppClassificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->D0(Lcom/miui/apppredict/activity/AppClassificationActivity;)[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->z0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationBaseBean;

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationBaseBean;->getFirstChar()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->E0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->u0(Lcom/miui/apppredict/activity/AppClassificationActivity;I)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->t0(Lcom/miui/apppredict/activity/AppClassificationActivity;)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$c;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->C0(Lcom/miui/apppredict/activity/AppClassificationActivity;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
