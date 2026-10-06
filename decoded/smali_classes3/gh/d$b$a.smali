.class Lgh/d$b$a;
.super Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgh/d$b;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:J

.field final synthetic l:Lgh/d$b;


# direct methods
.method constructor <init>(Lgh/d$b;Landroid/os/Handler;J)V
    .locals 0

    iput-object p1, p0, Lgh/d$b$a;->l:Lgh/d$b;

    iput-wide p3, p0, Lgh/d$b$a;->k:J

    invoke-direct {p0, p2}, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "check dm clean : clean done"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lgh/d$b$a;->k:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UrgentFixHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lgh/d$b$a;->k:J

    const-string v0, "dm_clean_event"

    const-string v1, "clean_size"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
