.class Lkd/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lkd/a;


# direct methods
.method private constructor <init>(Lkd/a;)V
    .locals 0

    iput-object p1, p0, Lkd/a$d;->a:Lkd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkd/a;Lkd/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lkd/a$d;-><init>(Lkd/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryChanged: level is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOldLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkd/a$d;->a:Lkd/a;

    invoke-static {v1}, Lkd/a;->d(Lkd/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHandleReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkd/a$d;->a:Lkd/a;

    iget-boolean v1, v0, Lkd/a;->k:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lkd/a;->d(Lkd/a;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkd/a$d;->a:Lkd/a;

    invoke-static {v0}, Lkd/a;->c(Lkd/a;)Z

    move-result v1

    invoke-static {v0, v1, p1}, Lkd/a;->f(Lkd/a;ZI)V

    :cond_0
    iget-object v0, p0, Lkd/a$d;->a:Lkd/a;

    invoke-static {v0, p1}, Lkd/a;->e(Lkd/a;I)I

    return-void
.end method
