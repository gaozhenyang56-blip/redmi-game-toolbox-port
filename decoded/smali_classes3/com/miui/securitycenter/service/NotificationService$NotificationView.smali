.class public Lcom/miui/securitycenter/service/NotificationService$NotificationView;
.super Landroid/widget/RemoteViews;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/service/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationView"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->pkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->refreshOptimizeView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/securitycenter/service/NotificationService$NotificationView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->refreshConfigView(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->refreshCleanerView()V

    return-void
.end method

.method private refreshCleanerView()V
    .locals 9

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-static {v0}, Lef/x;->e(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v2, v0, v2

    const v3, 0x7f060b53

    const v4, 0x7f080943

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const v1, 0x7f120dc8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/32 v5, 0x40000000

    cmp-long v5, v0, v5

    const/4 v6, 0x1

    const v7, 0x7f120dc9

    const/4 v8, 0x0

    if-gtz v5, :cond_1

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1, v8}, Lx4/j0;->d(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1, v8}, Lx4/j0;->d(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f080944

    const v3, 0x7f060b55

    :goto_0
    const v1, 0x7f0b05f1

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0b05f2

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private refreshConfigView(I)V
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v1, 0x7f0b05f7

    const v2, 0x7f0b05f6

    if-nez v0, :cond_1

    invoke-static {}, Lk6/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f08095f

    invoke-virtual {p0, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const v0, 0x7f1204ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_0
    const v0, 0x7f080981

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lme/e0;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const v3, 0x7f120dd6

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060b56

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v3, v6, v5, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060b53

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private refreshOptimizeView()V
    .locals 10

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {}, Lcom/miui/securitycenter/service/NotificationService;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/miui/securitycenter/service/NotificationService;->d()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v2, v0

    invoke-static {}, Lcom/miui/securitycenter/service/NotificationService;->d()J

    move-result-wide v0

    div-long v4, v2, v0

    :goto_0
    const-wide/16 v0, 0x14

    cmp-long v0, v4, v0

    const v1, 0x7f080979

    const v2, 0x7f060b53

    if-gez v0, :cond_1

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const v6, 0x7f1204b4

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x37

    cmp-long v3, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7f120da1

    if-gez v3, :cond_2

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v3, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x50

    cmp-long v1, v4, v1

    if-gez v1, :cond_3

    if-ltz v3, :cond_3

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f060b54

    const v1, 0x7f08097a

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f060b55

    const v1, 0x7f08097b

    :goto_1
    const v6, 0x7f0b0623

    invoke-virtual {p0, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    new-instance v3, Llf/a;

    iget-object v6, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v1}, Llf/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Llf/a;->a(I)V

    if-ltz v0, :cond_4

    long-to-float v0, v4

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v3, v0}, Llf/a;->b(F)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const v0, 0x7f0b0622

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1}, Lx4/o0;->l(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    const v0, 0x7f0b06ee

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x1020006

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NotificationService"

    const-string v4, "setImageViewBitmap exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "track_module"

    const-string v6, "securitycenter"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v6, 0x44000000    # 512.0f

    invoke-static {v3, v1, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const/4 v4, 0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v8, "memory_clean"

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v3, v4, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0b06f8

    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const/4 v4, 0x2

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v8, "garbage_clean"

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v3, v4, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0b06e0

    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const/4 v4, 0x3

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "config"

    invoke-virtual {v7, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f0b06e1

    invoke-virtual {p0, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lx4/t;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method
