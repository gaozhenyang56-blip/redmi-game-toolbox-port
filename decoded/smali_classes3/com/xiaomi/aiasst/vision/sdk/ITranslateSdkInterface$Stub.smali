.class public abstract Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17

    move-object/from16 v12, p0

    move/from16 v0, p1

    move-object/from16 v13, p3

    const/4 v14, 0x1

    const-string v1, "com.xiaomi.aiasst.vision.sdk.ITranslateSdkInterface"

    if-lt v0, v14, :cond_0

    const v2, 0xffffff

    if-gt v0, v2, :cond_0

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_8

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v9, v14

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v10, v14

    goto :goto_2

    :cond_2
    move v10, v1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v11, v14

    goto :goto_3

    :cond_3
    move v11, v1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move-object v10, v15

    move/from16 v11, v16

    invoke-interface/range {v0 .. v11}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->x5(IIIILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->K2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->Y(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_3
    invoke-interface/range {p0 .. p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->release()V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->B0(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v14

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v0, v1, v2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->g3([BZLjava/lang/String;)Z

    move-result v0

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v9, v14

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v10, v14

    goto :goto_5

    :cond_6
    move v10, v1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v11, v14

    goto :goto_6

    :cond_7
    move v11, v1

    :goto_6
    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-interface/range {v0 .. v9}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->J0(IIIILjava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v0, v1, v2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->l5(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v0, v1, v3, v2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->U1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_9
    invoke-interface/range {p0 .. p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->s1()Z

    move-result v0

    goto :goto_9

    :pswitch_a
    invoke-interface/range {p0 .. p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->K3()Z

    move-result v0

    goto :goto_9

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-interface {v12, v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->v3(I)Z

    move-result v0

    goto :goto_9

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->x4(Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;)V

    :goto_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :pswitch_d
    invoke-interface/range {p0 .. p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->U3()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-interface {v12, v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->p(I)Z

    move-result v0

    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v14

    :cond_8
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
