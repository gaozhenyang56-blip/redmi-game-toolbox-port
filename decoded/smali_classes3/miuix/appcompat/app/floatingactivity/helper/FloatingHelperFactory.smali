.class public Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_FOLD:I = 0x2

.field public static final TYPE_PAD:I = 0x1

.field public static final TYPE_PHONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .locals 2
    .param p0    # Lmiuix/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method

.method public static getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I
    .locals 1
    .param p0    # Lmiuix/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lbl/f;->b(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean v0, Lsl/a;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lsl/a;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p0, :cond_2

    sget-boolean p0, Lsl/a;->b:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
