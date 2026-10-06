.class Lcom/miui/bubbles/utils/TipsManager$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/utils/TipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/utils/TipsManager;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/utils/TipsManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/utils/TipsManager$2;->this$0:Lcom/miui/bubbles/utils/TipsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/utils/TipsManager$2;->this$0:Lcom/miui/bubbles/utils/TipsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTips(I)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
