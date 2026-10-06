.class La7/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/i$a;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La7/i$a;


# direct methods
.method constructor <init>(La7/i$a;)V
    .locals 0

    iput-object p1, p0, La7/i$a$a;->a:La7/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La7/i$a$a;->a:La7/i$a;

    iget-object v0, v0, La7/i$a;->a:La7/i;

    const/4 v1, 0x0

    iput-object v1, v0, La7/i;->i:Landroid/service/notification/StatusBarNotification;

    return-void
.end method
