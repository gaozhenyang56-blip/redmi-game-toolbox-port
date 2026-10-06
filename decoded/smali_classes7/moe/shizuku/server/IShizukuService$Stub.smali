.class public abstract Lmoe/shizuku/server/IShizukuService$Stub;
.super Landroid/os/Binder;
.source "IShizukuService.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuService"

.field static final TRANSACTION_addUserService:I = 0xc

.field static final TRANSACTION_attachApplication:I = 0x12

.field static final TRANSACTION_attachUserService:I = 0x66

.field static final TRANSACTION_checkPermission:I = 0x5

.field static final TRANSACTION_checkSelfPermission:I = 0x10

.field static final TRANSACTION_dispatchPackageChanged:I = 0x67

.field static final TRANSACTION_dispatchPermissionConfirmationResult:I = 0x69

.field static final TRANSACTION_exit:I = 0x65

.field static final TRANSACTION_getFlagsForUid:I = 0x6a

.field static final TRANSACTION_getSELinuxContext:I = 0x9

.field static final TRANSACTION_getSystemProperty:I = 0xa

.field static final TRANSACTION_getUid:I = 0x4

.field static final TRANSACTION_getVersion:I = 0x3

.field static final TRANSACTION_isHidden:I = 0x68

.field static final TRANSACTION_newProcess:I = 0x8

.field static final TRANSACTION_removeUserService:I = 0xd

.field static final TRANSACTION_requestPermission:I = 0xf

.field static final TRANSACTION_setSystemProperty:I = 0xb

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x11

.field static final TRANSACTION_updateFlagsForUid:I = 0x6b


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_4
    const-string v0, "moe.shizuku.server.IShizukuService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuService;

    if-eqz v1, :cond_14

    .line 107
    move-object v1, v0

    check-cast v1, Lmoe/shizuku/server/IShizukuService;

    return-object v1

    .line 109
    :cond_14
    new-instance v1, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuService;
    .registers 1

    .line 860
    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuService;)Z
    .registers 3
    .param p0, "impl"    # Lmoe/shizuku/server/IShizukuService;

    .line 850
    sget-object v0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    if-nez v0, :cond_c

    .line 853
    if-eqz p0, :cond_a

    .line 854
    sput-object p0, Lmoe/shizuku/server/IShizukuService$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuService;

    .line 855
    const/4 v0, 0x1

    return v0

    .line 857
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 851
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 113
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "moe.shizuku.server.IShizukuService"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1ce

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 350
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuService$Stub;->updateFlagsForUid(III)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    return v1

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->getFlagsForUid(II)I

    move-result v4

    .line 344
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v1

    .line 319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 327
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    .line 328
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_5a

    .line 331
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_59
    const/4 v5, 0x0

    .line 333
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_5a
    invoke-virtual {p0, v2, v3, v4, v5}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V

    .line 334
    return v1

    .line 309
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->isHidden(I)Z

    move-result v3

    .line 313
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v1

    .line 296
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_82

    .line 299
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg0":Landroid/content/Intent;
    goto :goto_83

    .line 302
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_82
    const/4 v2, 0x0

    .line 304
    .restart local v2    # "_arg0":Landroid/content/Intent;
    :goto_83
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->dispatchPackageChanged(Landroid/content/Intent;)V

    .line 305
    return v1

    .line 280
    .end local v2    # "_arg0":Landroid/content/Intent;
    :sswitch_87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9d

    .line 285
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_9e

    .line 288
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_9d
    const/4 v3, 0x0

    .line 290
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_9e
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    return v1

    .line 273
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->exit()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v1

    .line 257
    :sswitch_af
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuApplication$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuApplication;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Lmoe/shizuku/server/IShizukuApplication;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c9

    .line 262
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_ca

    .line 265
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_c9
    const/4 v3, 0x0

    .line 267
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_ca
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->attachApplication(Lmoe/shizuku/server/IShizukuApplication;Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    return v1

    .line 249
    .end local v2    # "_arg0":Lmoe/shizuku/server/IShizukuApplication;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_d1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->shouldShowRequestPermissionRationale()Z

    move-result v2

    .line 251
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return v1

    .line 241
    .end local v2    # "_result":Z
    :sswitch_df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->checkSelfPermission()Z

    move-result v2

    .line 243
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return v1

    .line 232
    .end local v2    # "_result":Z
    :sswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->requestPermission(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v1

    .line 215
    .end local v2    # "_arg0":I
    :sswitch_fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Lmoe/shizuku/server/IShizukuServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_115

    .line 220
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_116

    .line 223
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_115
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_116
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v4

    .line 226
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return v1

    .line 198
    .end local v2    # "_arg0":Lmoe/shizuku/server/IShizukuServiceConnection;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :sswitch_121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;

    move-result-object v2

    .line 202
    .restart local v2    # "_arg0":Lmoe/shizuku/server/IShizukuServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13b

    .line 203
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_13c

    .line 206
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_13b
    const/4 v3, 0x0

    .line 208
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_13c
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I

    move-result v4

    .line 209
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return v1

    .line 187
    .end local v2    # "_arg0":Lmoe/shizuku/server/IShizukuServiceConnection;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :sswitch_147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v1

    .line 175
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lmoe/shizuku/server/IShizukuService$Stub;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 167
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_16f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getSELinuxContext()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 153
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_17d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lmoe/shizuku/server/IShizukuService$Stub;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v5

    .line 161
    .local v5, "_result":Lmoe/shizuku/server/IRemoteProcess;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v5, :cond_19a

    invoke-interface {v5}, Lmoe/shizuku/server/IRemoteProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_19b

    :cond_19a
    const/4 v6, 0x0

    :goto_19b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    return v1

    .line 143
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Lmoe/shizuku/server/IRemoteProcess;
    :sswitch_19f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuService$Stub;->checkPermission(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v1

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_1b1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getUid()I

    move-result v2

    .line 137
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v1

    .line 127
    .end local v2    # "_result":I
    :sswitch_1bf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->getVersion()I

    move-result v2

    .line 129
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v1

    nop

    :sswitch_data_1ce
    .sparse-switch
        0x3 -> :sswitch_1bf
        0x4 -> :sswitch_1b1
        0x5 -> :sswitch_19f
        0x8 -> :sswitch_17d
        0x9 -> :sswitch_16f
        0xa -> :sswitch_159
        0xb -> :sswitch_147
        0xc -> :sswitch_121
        0xd -> :sswitch_fb
        0xf -> :sswitch_ed
        0x10 -> :sswitch_df
        0x11 -> :sswitch_d1
        0x12 -> :sswitch_af
        0x65 -> :sswitch_a5
        0x66 -> :sswitch_87
        0x67 -> :sswitch_70
        0x68 -> :sswitch_5e
        0x69 -> :sswitch_3b
        0x6a -> :sswitch_25
        0x6b -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
