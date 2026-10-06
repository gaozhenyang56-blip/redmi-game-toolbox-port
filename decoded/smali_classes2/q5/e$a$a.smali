.class Lq5/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/e$a;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq5/e;

.field final synthetic b:Lq5/e$a;


# direct methods
.method constructor <init>(Lq5/e$a;Lq5/e;)V
    .locals 0

    iput-object p1, p0, Lq5/e$a$a;->b:Lq5/e$a;

    iput-object p2, p0, Lq5/e$a$a;->a:Lq5/e;

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

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq5/e$a$a;->a:Lq5/e;

    invoke-static {v0}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/content/Context;)V

    iget-object p1, p0, Lq5/e$a$a;->a:Lq5/e;

    invoke-static {p1}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqf/c;->A(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
