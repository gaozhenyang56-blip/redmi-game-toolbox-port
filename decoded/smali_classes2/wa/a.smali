.class public Lwa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/a$b;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final SELF_CLEAN:I = 0x1

.field public static final THIRD_CLEAN:I = 0x2


# instance fields
.field public appIconUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public cacheSize:J

.field private cleanType:I

.field public codeSize:J

.field public dataSize:J

.field public isSystemApp:Z

.field public isWOrkProfile:Z

.field public isXSpaceApp:Z

.field private final mDisplayImageOptions:Lrh/c;

.field public final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field public pkgName:Ljava/lang/String;

.field public sdcardSize:J

.field public systemSize:J

.field public thirdScanSize:J

.field public totalSize:J

.field public uid:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    const v1, 0x7f080954

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lwa/a;->mDisplayImageOptions:Lrh/c;

    iput v2, p0, Lwa/a;->cleanType:I

    new-instance v0, Lwa/a$a;

    invoke-direct {v0, p0}, Lwa/a$a;-><init>(Lwa/a;)V

    iput-object v0, p0, Lwa/a;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method public static createInfoInstance(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Z)Lwa/a;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lwa/a;

    invoke-direct {v0}, Lwa/a;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lwa/a;->uid:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lwa/a;->versionCode:I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v0, Lwa/a;->versionName:Ljava/lang/String;

    iput-boolean p2, v0, Lwa/a;->isXSpaceApp:Z

    const-string p2, "pkg_icon://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lwa/a;->appIconUrl:Ljava/lang/String;

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lwa/a;->setSystemApp(Z)V

    iget-boolean p2, v0, Lwa/a;->isXSpaceApp:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon_xspace://"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lwa/a;->appIconUrl:Ljava/lang/String;

    :cond_2
    sget-boolean p2, Lsl/a;->a:Z

    if-nez p2, :cond_4

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lwa/a;->setCleanType(I)V

    :cond_4
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {v0, v1}, Lwa/a;->setCleanType(I)V

    :cond_5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lwa/a;->appName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra/d$a;

    iget-object v1, v0, Lra/d$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lwa/a;->appIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object v1, Lwh/c$a;->i:Lwh/c$a;

    iget-object v2, p0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lra/d$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lwa/a;->mDisplayImageOptions:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v1, v0, Lra/d$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lwa/a;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lra/d$a;->c:Landroid/widget/TextView;

    const v1, 0x7f121838

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lwa/a;->totalSize:J

    invoke-static {p1, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearAllData()J
    .locals 6

    invoke-virtual {p0}, Lwa/a;->clearCache()J

    move-result-wide v0

    iget-wide v2, p0, Lwa/a;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v4, p0, Lwa/a;->totalSize:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lwa/a;->totalSize:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lwa/a;->dataSize:J

    return-wide v0
.end method

.method public clearCache()J
    .locals 4

    iget-wide v0, p0, Lwa/a;->cacheSize:J

    iget-wide v2, p0, Lwa/a;->totalSize:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lwa/a;->totalSize:J

    iget-wide v2, p0, Lwa/a;->dataSize:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lwa/a;->dataSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwa/a;->cacheSize:J

    return-wide v0
.end method

.method public getAppSize()J
    .locals 2

    iget-wide v0, p0, Lwa/a;->codeSize:J

    return-wide v0
.end method

.method public getAppSizeOnly()J
    .locals 4

    invoke-virtual {p0}, Lwa/a;->isInstalledOnUserData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lwa/a;->codeSize:J

    iget-wide v2, p0, Lwa/a;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lwa/a;->dataSize:J

    return-wide v0
.end method

.method public getCleanType()I
    .locals 1

    iget v0, p0, Lwa/a;->cleanType:I

    return v0
.end method

.method public getDataSize()J
    .locals 2

    iget-wide v0, p0, Lwa/a;->dataSize:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwa/a;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalledOnUserData()Z
    .locals 2

    iget-object v0, p0, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameApp(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lwa/a;->uid:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSystemApp()Z
    .locals 1

    iget-boolean v0, p0, Lwa/a;->isSystemApp:Z

    return v0
.end method

.method public isSystemInstallUpdate()Z
    .locals 1

    iget-object v0, p0, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCleanType(I)V
    .locals 0

    iput p1, p0, Lwa/a;->cleanType:I

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwa/a;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lwa/a;->isSystemApp:Z

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lwa/a;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppStorageStats{pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lwa/a;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
