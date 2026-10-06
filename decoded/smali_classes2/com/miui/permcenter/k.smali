.class public final synthetic Lcom/miui/permcenter/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/i$b;

.field public final synthetic b:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/i$b;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/k;->a:Lcom/miui/permcenter/i$b;

    iput-object p2, p0, Lcom/miui/permcenter/k;->b:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/k;->a:Lcom/miui/permcenter/i$b;

    iget-object v1, p0, Lcom/miui/permcenter/k;->b:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/miui/permcenter/i$b;->v1(Lcom/miui/permcenter/i$b;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
