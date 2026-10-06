.class Lcom/miui/permcenter/root/RootManagementActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/root/RootManagementActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/permcenter/root/RootManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/root/RootManagementActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity$b;->b:Lcom/miui/permcenter/root/RootManagementActivity;

    iput-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity$b;->b:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/permcenter/root/RootManagementActivity$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v2, 0x200

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/root/RootManagementActivity$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
