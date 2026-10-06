.class Lq5/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/d$a;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic b:Lq5/d$a;


# direct methods
.method constructor <init>(Lq5/d$a;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lq5/d$a$a;->b:Lq5/d$a;

    iput-object p2, p0, Lq5/d$a$a;->a:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    iget-object v0, p0, Lq5/d$a$a;->a:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/content/Context;)V

    return-void
.end method
