.class Lmiuix/bottomsheet/BottomSheetBehavior$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/lang/Runnable;

.field final synthetic d:Lmiuix/bottomsheet/BottomSheetBehavior;


# direct methods
.method private constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->d:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;

    invoke-direct {p1, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior$p;)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->c:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;Lmiuix/bottomsheet/BottomSheetBehavior$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$p;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method static synthetic a(Lmiuix/bottomsheet/BottomSheetBehavior$p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->b:Z

    return p1
.end method

.method static synthetic b(Lmiuix/bottomsheet/BottomSheetBehavior$p;)I
    .locals 0

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->a:I

    return p0
.end method


# virtual methods
.method c(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->d:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->a:I

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->d:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->c:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->h0(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->b:Z

    :cond_1
    :goto_0
    return-void
.end method
