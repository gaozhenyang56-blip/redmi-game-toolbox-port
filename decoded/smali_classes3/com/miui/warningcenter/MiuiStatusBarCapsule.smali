.class public Lcom/miui/warningcenter/MiuiStatusBarCapsule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    }
.end annotation


# instance fields
.field private final bgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final icon:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final pi:Landroid/app/PendingIntent;

.field private final priority:I

.field private final status:Landroid/app/MiuiStatusBarState;

.field private final tag:Ljava/lang/String;

.field private final title:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public final warningCenterAlertWindow:Landroidx/lifecycle/u;


# direct methods
.method private constructor <init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;-><init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule;)V

    iput-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->warningCenterAlertWindow:Landroidx/lifecycle/u;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$000(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$100(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->tag:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$200(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08037a

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$200(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->icon:I

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$300(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result v1

    iput v1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->bgColor:I

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$400(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->pi:Landroid/app/PendingIntent;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$500(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result v3

    iput v3, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->title:I

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$600(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result v3

    iput v3, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->priority:I

    new-instance v3, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$000(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setAppIcon(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setBackgroundColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Landroid/app/MiuiStatusBarState;

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$100(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->access$600(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/app/MiuiStatusBarState;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    iput-object v1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->status:Landroid/app/MiuiStatusBarState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule;-><init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->clearState(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setLifecycleEvent(Landroidx/lifecycle/v;Landroidx/lifecycle/u;)V
    .locals 0

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->status:Landroid/app/MiuiStatusBarState;

    invoke-static {v0, v1}, Landroid/app/MiuiStatusBarManager;->applyState(Landroid/content/Context;Landroid/app/MiuiStatusBarState;)Z

    return-void
.end method
