.class public final Lcom/miui/earthquakewarning/utils/LocationRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/earthquakewarning/utils/LocationRecorder;->Companion:Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLocation(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/earthquakewarning/utils/LocationRecorder;->Companion:Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;->getLocation(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
