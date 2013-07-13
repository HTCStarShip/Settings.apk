.class public final Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcWirelessSleepModeEndPreference.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "WIRELESS_SLEEP_MODE_END"

.field private static final MESSAGE_ON_CLICK:I = 0x4

.field private static final MESSAGE_ON_ENABLE_DISABLE_STATE:I = 0x7

.field private static final MESSAGE_ON_GET_MODE:I = 0x3

.field private static final MESSAGE_ON_GET_VALUE:I = 0x1

.field private static final MESSAGE_ON_NOTIFY:I = 0x5

.field private static final MESSAGE_ON_SET_VALUE:I = 0x2

.field private static final MESSAGE_ON_UPDATE_SUMMARY:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcTimePickerDialog;

.field private mIsClicking:Z

.field public mIsInPower:Z

.field private mNonUIHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->initialize(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsInPower:Z

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->initialize(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsInPower:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->initialize(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 476
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "WIRELESS_SLEEP_MODE_END"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setKey(Ljava/lang/String;)V

    .line 140
    :cond_0
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setTitle(I)V

    .line 141
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method private declared-synchronized onHandleNonUIMessage_click()V
    .locals 7

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_wireless_sleep_end_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 414
    .local v6, timeValue:I
    div-int/lit8 v3, v6, 0x3c

    .line 415
    .local v3, hourOfDay:I
    rem-int/lit8 v4, v6, 0x3c

    .line 416
    .local v4, minute:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 427
    .local v5, isHour24:Z
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    .line 430
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    monitor-exit p0

    return-void

    .line 410
    .end local v3           #hourOfDay:I
    .end local v4           #minute:I
    .end local v5           #isHour24:Z
    .end local v6           #timeValue:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onHandleNonUIMessage_getMode()V
    .locals 6

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 389
    .local v0, DEFAULT_VALUE:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_wireless_sleep_mode_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 399
    .local v1, wirelessMode:Z
    iget-object v2, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    new-instance v4, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 404
    return-void
.end method

.method private onHandleNonUIMessage_getValue(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v5, 0x0

    .line 325
    .local v5, timeValue:I
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-nez v6, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_wireless_sleep_end_time"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 331
    div-int/lit8 v2, v5, 0x3c

    .line 332
    .local v2, hourOfDay:I
    rem-int/lit8 v3, v5, 0x3c

    .line 338
    .local v3, minute:I
    :goto_0
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 339
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 343
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    new-instance v8, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v8, p0, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 358
    return-void

    .line 334
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    .end local v2           #hourOfDay:I
    .end local v3           #minute:I
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 335
    .restart local v2       #hourOfDay:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .restart local v3       #minute:I
    goto :goto_0
.end method

.method private onHandleNonUIMessage_notify()V
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;->broadcast(Landroid/content/Context;)V

    .line 440
    return-void
.end method

.method private onHandleNonUIMessage_setValue(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 366
    .local v0, hourOfDay:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 374
    .local v1, minute:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_wireless_sleep_end_time"

    mul-int/lit8 v4, v0, 0x3c

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    return-void
.end method


# virtual methods
.method public declared-synchronized closeDialog()V
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->dismiss()V

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final dispatchClickMessage()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchGetModeMessage()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the get-mode event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchGetValueMessage(II)V
    .locals 2
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the get-value event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchNotifyMessage()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the notify event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetValueMessage(II)V
    .locals 2
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the set-value event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 148
    const-string v0, "WIRELESS_SLEEP_MODE"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setDependency(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsClicking:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mIsInPower:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchClickMessage()V

    .line 156
    :cond_0
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 193
    iput-object p2, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mUIHandler:Landroid/os/Handler;

    .line 194
    iput-object p3, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 295
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->onHandleNonUIMessage_getValue(Landroid/os/Message;)V

    goto :goto_1

    .line 300
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->onHandleNonUIMessage_setValue(Landroid/os/Message;)V

    goto :goto_1

    .line 303
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->onHandleNonUIMessage_getMode()V

    goto :goto_1

    .line 306
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->onHandleNonUIMessage_click()V

    goto :goto_1

    .line 309
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->onHandleNonUIMessage_notify()V

    goto :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onHandleUIMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v1

    .line 450
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 453
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 464
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 472
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 466
    :pswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 469
    :pswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->setEnabled(Z)V

    goto :goto_1

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchGetValueMessage(II)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchGetModeMessage()V

    .line 185
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->mDialog:Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->dismiss()V

    .line 484
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 172
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchSetValueMessage(II)V

    .line 173
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchGetValueMessage(II)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;->dispatchNotifyMessage()V

    .line 175
    return-void
.end method
