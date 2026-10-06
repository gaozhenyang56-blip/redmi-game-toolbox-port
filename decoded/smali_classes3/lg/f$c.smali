.class Llg/f$c;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Llg/f;


# direct methods
.method private constructor <init>(Llg/f;)V
    .locals 0

    iput-object p1, p0, Llg/f$c;->a:Llg/f;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llg/f;Llg/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Llg/f$c;-><init>(Llg/f;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object p2, p0, Llg/f$c;->a:Llg/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Llg/f;->f(Llg/f;Z)Z

    iget-object p1, p0, Llg/f$c;->a:Llg/f;

    invoke-static {p1}, Llg/f;->g(Llg/f;)V

    return-void
.end method
