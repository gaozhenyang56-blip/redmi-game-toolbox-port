.class Lcom/miui/applicationlock/MaskNotificationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/MaskNotificationActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/MaskNotificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity$a;->a:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity$a;->a:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->e0(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-static {v0}, La3/a;->w(Lmiui/security/SecurityManager;)V

    return-void
.end method
