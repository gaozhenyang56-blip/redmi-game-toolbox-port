.class Lcom/miui/applicationmanagement/AppManagementService$a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationmanagement/AppManagementService$a;->b([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/applicationmanagement/AppManagementService$a;


# direct methods
.method constructor <init>(Lcom/miui/applicationmanagement/AppManagementService$a;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationmanagement/AppManagementService$a$a;->b:Lcom/miui/applicationmanagement/AppManagementService$a;

    iput-object p3, p0, Lcom/miui/applicationmanagement/AppManagementService$a$a;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/applicationmanagement/AppManagementService$a$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string p1, "AppManagementService"

    const-string v0, "mergeStatus by CTA"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationmanagement/AppManagementService$a$a;->b:Lcom/miui/applicationmanagement/AppManagementService$a;

    iget-object v0, p0, Lcom/miui/applicationmanagement/AppManagementService$a$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/applicationmanagement/AppManagementService$a;->a(Lcom/miui/applicationmanagement/AppManagementService$a;Landroid/content/Context;)V

    return-void
.end method
