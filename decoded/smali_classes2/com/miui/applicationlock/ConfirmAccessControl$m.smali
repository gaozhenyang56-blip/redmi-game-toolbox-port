.class final Lcom/miui/applicationlock/ConfirmAccessControl$m;
.super Landroid/app/TaskStackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/ConfirmAccessControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/ConfirmAccessControl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$m;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->d1(Lcom/miui/applicationlock/ConfirmAccessControl;ZZ)V

    return-void
.end method
