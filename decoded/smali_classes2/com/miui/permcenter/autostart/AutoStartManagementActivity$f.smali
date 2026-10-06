.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;->b:Z

    if-nez v1, :cond_0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/f1;->f(Landroid/app/ActivityManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
