.class Lcom/miui/securityscan/model/manualitem/DarkModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/model/manualitem/DarkModel;->optimize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/DarkModel;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/DarkModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DarkModel$a;->b:Lcom/miui/securityscan/model/manualitem/DarkModel;

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/DarkModel$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DarkModel$a;->a:Landroid/content/Context;

    const v1, 0x7f121a74

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DarkModel$a;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->z0()V

    :cond_0
    return-void
.end method
