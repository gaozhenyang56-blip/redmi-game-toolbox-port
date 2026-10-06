.class Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;->a:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;

    iget-object p2, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;->a:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    iget-object p1, p1, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->d0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Ljava/lang/String;)V

    return-void
.end method
