.class public Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/MiuiStatusBarCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private icon:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private pi:Landroid/app/PendingIntent;

.field private priority:I

.field private tag:Ljava/lang/String;

.field private title:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->icon:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->bgColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->pi:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->title:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;)I
    .locals 0

    iget p0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->priority:I

    return p0
.end method


# virtual methods
.method public build()Lcom/miui/warningcenter/MiuiStatusBarCapsule;
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/MiuiStatusBarCapsule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule;-><init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;)V

    return-object v0
.end method

.method public setBgColor(I)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->bgColor:I

    return-object p0
.end method

.method public setIcon(I)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->icon:I

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->pi:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setPriority(I)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->priority:I

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$Builder;->title:I

    return-object p0
.end method
