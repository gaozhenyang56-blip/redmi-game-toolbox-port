.class public interface abstract Lcom/miui/international/bean/GlobalAdBaseBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/international/bean/GlobalAdBaseBean$a;,
        Lcom/miui/international/bean/GlobalAdBaseBean$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/international/bean/GlobalAdBaseBean$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final layoutId:I = 0x7f0e0491


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/miui/international/bean/GlobalAdBaseBean$a;->a:Lcom/miui/international/bean/GlobalAdBaseBean$a;

    sput-object v0, Lcom/miui/international/bean/GlobalAdBaseBean;->Companion:Lcom/miui/international/bean/GlobalAdBaseBean$a;

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getNativeAd()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPlaceId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPosition()I
.end method

.method public abstract getStatus()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract release()V
.end method

.method public abstract setClosed()V
.end method

.method public abstract setNativeAd(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPlaceId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setPosition(I)V
.end method

.method public abstract setStatus(I)V
.end method
