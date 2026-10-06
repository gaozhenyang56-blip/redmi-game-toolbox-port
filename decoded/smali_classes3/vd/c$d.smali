.class Lvd/c$d;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/c;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/c;


# direct methods
.method constructor <init>(Lvd/c;)V
    .locals 0

    iput-object p1, p0, Lvd/c$d;->a:Lvd/c;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lvd/c$d;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->f(Lvd/c;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lvd/c$d;->a:Lvd/c;

    invoke-static {p1}, Lvd/c;->b(Lvd/c;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lvd/c;->g(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
