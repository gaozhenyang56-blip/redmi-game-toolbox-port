.class Lmiuix/responsive/page/manager/BaseResponseStateManager$a;
.super Lkm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lim/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .locals 0

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$a;->b:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Lkm/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$a;->b:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-static {v0, p3, p1, p4, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->access$000(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lkm/a;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
