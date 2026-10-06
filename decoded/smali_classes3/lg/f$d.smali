.class Llg/f$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Llg/f;


# direct methods
.method private constructor <init>(Llg/f;)V
    .locals 0

    iput-object p1, p0, Llg/f$d;->a:Llg/f;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Llg/f;Llg/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Llg/f$d;-><init>(Llg/f;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Llg/f$d;->a:Llg/f;

    invoke-static {p1}, Llg/f;->i(Llg/f;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_is_in_miui_sos_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {p1, v2}, Llg/f;->h(Llg/f;Z)Z

    iget-object p1, p0, Llg/f$d;->a:Llg/f;

    invoke-static {p1}, Llg/f;->g(Llg/f;)V

    return-void
.end method
