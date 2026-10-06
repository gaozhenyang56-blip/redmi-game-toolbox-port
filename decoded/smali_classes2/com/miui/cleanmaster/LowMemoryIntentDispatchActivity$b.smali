.class Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;


# direct methods
.method constructor <init>(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;->a:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    invoke-static {}, Lx4/y;->h()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;->a:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-static {v0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->b(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "LowMemoryDispatch"

    const-string v1, "isFlipDeviceFolded changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;->a:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-static {v0, p1}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->c(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;Z)Z

    iget-object p1, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;->a:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-static {p1}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->d(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
