.class Lq5/e$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic b:Lcom/miui/common/card/models/BaseCardModel;

.field final synthetic c:Lq5/e$a;


# direct methods
.method constructor <init>(Lq5/e$a;Lq5/e;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lq5/e$a$c;->c:Lq5/e$a;

    iput-object p2, p0, Lq5/e$a$c;->a:Lq5/e;

    iput-object p3, p0, Lq5/e$a$c;->b:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lq5/e$a$c;->a:Lq5/e;

    invoke-static {v0}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq5/e$a$c;->c:Lq5/e$a;

    iget-object v1, p0, Lq5/e$a$c;->b:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v2, p0, Lq5/e$a$c;->a:Lq5/e;

    invoke-static {v2}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/common/card/BaseViewHolder;->showFirstAidItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
