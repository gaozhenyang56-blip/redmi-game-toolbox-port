.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastWidth:I

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lambda$onLayoutChange$0()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object p1

    new-instance p2, Lmiuix/appcompat/internal/app/widget/g;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/g;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
