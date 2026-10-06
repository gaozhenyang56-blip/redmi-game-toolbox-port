.class public final synthetic Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic canBypassDnd()Z
.end method

.method public native synthetic canShowBadge()Z
.end method

.method public native synthetic enableLights(Z)V
.end method

.method public native synthetic enableVibration(Z)V
.end method

.method public native synthetic getAudioAttributes()Landroid/media/AudioAttributes;
.end method

.method public native synthetic getDescription()Ljava/lang/String;
.end method

.method public native synthetic getGroup()Ljava/lang/String;
.end method

.method public native synthetic getId()Ljava/lang/String;
.end method

.method public native synthetic getImportance()I
.end method

.method public native synthetic getLightColor()I
.end method

.method public native synthetic getLockscreenVisibility()I
.end method

.method public native synthetic getName()Ljava/lang/CharSequence;
.end method

.method public native synthetic getSound()Landroid/net/Uri;
.end method

.method public native synthetic getVibrationPattern()[J
.end method

.method public native synthetic setDescription(Ljava/lang/String;)V
.end method

.method public native synthetic setGroup(Ljava/lang/String;)V
.end method

.method public native synthetic setImportance(I)V
.end method

.method public native synthetic setLightColor(I)V
.end method

.method public native synthetic setLockscreenVisibility(I)V
.end method

.method public native synthetic setShowBadge(Z)V
.end method

.method public native synthetic setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
.end method

.method public native synthetic setVibrationPattern([J)V
.end method

.method public native synthetic shouldShowLights()Z
.end method

.method public native synthetic shouldVibrate()Z
.end method
